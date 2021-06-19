SELECT id, content, created_at FROM comment
WHERE created_at >= DATE_TRUNC('day', NOW()) AND created_at < DATE_TRUNC('day', NOW() + INTERVAL '1 day');

-- has better perfotmance than

SELECT id, content, created_at FROM comment
WHERE created_at::DATE = NOW()::DATE;