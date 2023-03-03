workspace "Portal de Planejamento e Orçamento" {

    !identifiers hierarchical
    !docs docs
    !adrs adrs

    model {

        user = person "Usuário"
        admin = person "Administrador"
        
        pdt = softwareSystem "Portal da Transparência" "Responsável pela extração bimestral ou anual (dependendo da consulta em questão) após autorização da SEPLAG para divulgação em transparencia.mg.gov.br/" "#external-system"
        
        armazem = softwareSystem "Armazém SIAFI" "Armazém de dados (Banco Oracle) da execução orçamentária e financeira provenientes do SIAFI"  "#external-system" {
            db = container "Banco Relacional" "" "Oracle" "#db, #external-system"
        }

        adseg = softwareSystem "Sistema de Segurança (ADSEG)" "Responsável pela autenticação de usuários" "#external-system"

        siafi = softwareSystem "SIAFI" "O Sistema Integrado de Administração Financeira (Mainframe) é o responsável pela execução orçamentária e financeira estadual" "#external-system"

        grp = softwareSystem "GRP" "Futuro responsável pela execução orçamentária e financeira estadual em substituição ao SIAFI e módulos de outros sistemas" "#external-system"

        sigcon_entrada = softwareSystem "SIGCON-Entrada" "Sistema de Gestão de Convênios de Entrada" "#external-system"

        sigcon_saida = softwareSystem "SIGCON-Saída" "Sistema de Gestão de Convênios de Saída" "#external-system"

        almg = softwareSystem "Assembleia Legislativa" "" "#external-system" {
            emendas = container "Emendas" "" "" "#external-system, #file"
        }
        
        group "Portal de Planejamento e Orçamento" {

            sigplan = softwareSystem "SIGPLAN" {
                app = container "Aplicação WEB" "" "ASP, VBScript, IIS" "#app"
                db = container "Banco Relacional" "" "SQL Server" "#db"
                etl = container "ETL" "" "Informatica PowerCenter" "#etl"
            }

            sisor = softwareSystem "SISOR" {
                app = container "Aplicação WEB" "" "Java" "#app"
                db = container "Banco Relacional" "RDBMS" "Oracle 19c" "#db"
                etl = container "ETL" "" "Informatica PowerCenter" "#etl"
                email = container "Servidor Email" "Envio de emails de notificações de usuários"
            }

        }

        #======================
        # relacionamentos sigplan
        
        # sistemas externos
        pdt -> sigplan "Extrai dados do" "Informatica PowerCenter"
        sigplan -> armazem "Extrai dados do" "Informatica PowerCenter"
        sigplan -> almg "Envia e importa dados de" "Arquivos TXT"
        sigplan -> siafi "Envia dados para" "Arquivos TXT"
        sigplan.app -> sisor.db "Carrega dados no" "ODBC"

        # internos

        #======================
        # relacionamentos sisor

        # sistemas externos

        pdt -> sisor "Extrai dados do" "Informatica PowerCenter"
        sisor -> armazem "Extrai dados do" "Informatica PowerCenter"
        sisor -> adseg "Autentica usuário no" "IBM RACF z/OS"
        sisor -> siafi "Envia dados para" "Broker"
        sigcon_entrada -> sisor "Leitura de dados do"
        sigcon_saida -> sisor "Leitura de dados do" "DBLink"
        sisor -> almg "Envia e importa dados do" "Arquivos TXT"
        sisor.app -> sigplan.db "Leitura de dados do"


        # internos


    }

    views {
        theme default
        
        systemContext sigplan "sigplanDiagramaContexto"{
            include *
            include grp
            autolayout tb
        }

        container sigplan "sigplanDiagramaContainer" {
            include *
            autolayout tb
        }

        systemContext sisor "sisorDiagramaContexto"{
            include *
            include grp
            autolayout tb
        }

        container sisor "sisorDiagramaContainer" {
            include *
            autolayout tb
        }

        styles {
            element "Person" {
                shape person
            }

            element "#app" {
                shape RoundedBox
            }
            
            element "#db" {
                shape Cylinder
            }

            element "#external-system" {
                background #999999
                color #ffffff
            }

            element "#file" {
                shape Folder
            }

            element "#etl" {
                shape Pipe
            }
        }
    }
    
}
