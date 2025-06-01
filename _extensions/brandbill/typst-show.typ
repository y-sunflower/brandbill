
#show: doc => article(
$if(title)$
  title: [$title$],
$endif$
$if(by-author)$
  authors: (
$for(by-author)$
$if(it.name.literal)$
    ( name: [$it.name.literal$],
      affiliation: [$for(it.affiliations)$$it.name$$sep$, $endfor$],
      email: [$it.email$] ),
$endif$
$endfor$
    ),
$endif$
$if(date)$
  date: [$date$],
$endif$
$if(params.invoiceID)$
  invoiceID: [$params.invoiceID$],
$endif$
$if(params.mainfont)$
  font: [$params.mainfont$],
$endif$
$if(params.logo_company)$
  logo_company: [$params.logo_company$],
$endif$
$if(params.logo_client)$
  logo_client: [$params.logo_client$],
$endif$
$if(params.company)$
  company: [$params.company$],
$endif$
$if(params.company_info)$
  company_info: [$params.company_info$],
$endif$
$if(params.client)$
  client: [$params.client$],
$endif$
$if(params.client_info)$
  client_info: [$params.client_info$],
$endif$
  doc,
)
