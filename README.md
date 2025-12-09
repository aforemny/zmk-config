# zmk-config

```
nix-build -A firmware
```

```console
❯ ( cd ../miryoku_zmk && git diff )
diff --git a/miryoku/custom_config.h b/miryoku/custom_config.h
index 1097bcb..e961161 100644
--- a/miryoku/custom_config.h
+++ b/miryoku/custom_config.h
@@ -1,3 +1,4 @@
 // Copyright 2021 Manna Harbour
 // https://github.com/manna-harbour/miryoku
 
+#define MIRYOKU_ALPHAS_QWERTY
```
