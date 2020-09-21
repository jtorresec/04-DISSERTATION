studies.a <- 
        data.frame(Método = c('Ex-ante', 'Ex-ante', 'Ex-ante', 'Ex-ante',
                              'Ex-Post'),
                   Autores = c('KOYAMA e NAKANE (2001a e 2001b)',
                               'AFANASIEFF, LHAGER e NAKANE (2001 e 2002)',
                               'BIGNOTTO e RODRIGUES (2006)',
                               'OREIRO et al. (2006)',
                               'GUIMARÃES (2002)'),
                   'Variáveis Explicativas — Diretas' = 
                           c('Selic (+); spread over treasury (+); impostos indiretos (+); custo administrativo (+); IGP(+); Requerimento de reserva (+).',
                             'Custo operacional (+); captação sem custo de juros (+); receita de serviços (+); IGP (+); Selic (+); ; crescimento do produto industrial (+); spread over treasury (+); impostos indiretos (+).',
                             'Selic (+); custo administrativo (+); risco de juros (+); risco de crédito (+); liquidez (+); receita de serviços (+); compulsório (+); ativo total (+),.',
                             'Produto industrial (+); Selic (+); volatilidade da Selic (+).',
                             'Participação dos bancos estrangeiros (+); caixa e depósitos (+).'),
                   'Variáveis Explicativas — Indiretas' = 
                           c('Produto industrial (–)',
                             'crescimento do produto industrial (–); volatilidade da Selic (–); banco estrangeiro (–); IGP (–)',
                             'IPCA (–); parcela de mercado (–)', 
                             '',
                             ''))

kbl(studies.a, booktabs = T) %>% 
        kable_styling(latex_options = c("striped"), #"scale_down"),
                      font_size = 10, full_width = T) %>% 
        column_spec(1, width = "1cm") %>% 
        column_spec(2, width = "3cm") %>% 
        column_spec(3, width = "6cm") %>% 
        column_spec(3, width = "6cm")
