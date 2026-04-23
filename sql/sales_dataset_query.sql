SELECT
  s.date AS session_date,
  s.ga_session_id,
  o.item_id,
  sp.continent,
  sp.country,
  sp.device,
  sp.browser,
  sp.mobile_model_name AS model_name,
  sp.operating_system,
  sp.language,
  sp.name AS traffic_source,
  sp.channel AS traffic_channel,
  a.id AS user_id,
CASE
  WHEN a.id IS NULL THEN NULL
  ELSE CAST(a.is_verified AS INT64)
END AS email_confirmed,
CASE
  WHEN a.id IS NULL THEN NULL
  WHEN a.is_unsubscribed = 1 THEN 0
  ELSE 1
END AS is_subscribed,
  p.category,
  p.name AS product_name,
  p.price,
  p.short_description
FROM `data-analytics-mate.DA.session` s
LEFT JOIN `data-analytics-mate.DA.order` o
  ON s.ga_session_id = o.ga_session_id
LEFT JOIN `data-analytics-mate.DA.session_params` sp
  ON s.ga_session_id = sp.ga_session_id
LEFT JOIN `data-analytics-mate.DA.product` p
  ON o.item_id = p.item_id
LEFT JOIN `data-analytics-mate.DA.account_session` acs
  ON s.ga_session_id = acs.ga_session_id
LEFT JOIN `data-analytics-mate.DA.account` a
  ON acs.account_id = a.id