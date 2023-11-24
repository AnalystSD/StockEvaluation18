/*Here is a small query to show some healthy or not so healthy quantitative information of the stocks*/
select name, ABS((`Dividend payments` / `Dividend per Share`)) as ShareAmount, ABS((`Market Cap` / (`Dividend payments` / `Dividend per Share`))) as 'Stock Price', priceToBookRatio, `Market Cap`, `Total shareholders equity`, (`Total current assets` - `Total Current Liabilities`) as Net_Value, `Total Debt`, `Net Cash flow / Change in cash`
from 2018_financial_data
where ABS((`Dividend payments` / `Dividend per Share`)) is not null
and name <> "MSB"
order by priceToBookRatio DESC