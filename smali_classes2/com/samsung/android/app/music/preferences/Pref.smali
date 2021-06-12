.class public Lcom/samsung/android/app/music/preferences/Pref;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 8

    .line 370
    invoke-static {p0}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v3

    .line 373
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 374
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "value"

    .line 375
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .line 377
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/database/Cursor;)V

    return-wide p2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 0

    .line 302
    invoke-static {p0}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_preferences"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 334
    invoke-static {p0}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v3

    .line 337
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 338
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "value"

    .line 339
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 341
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/database/Cursor;)V

    return-object p2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 316
    invoke-static {p0}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p1

    .line 318
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static a(Landroid/database/Cursor;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 425
    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 8

    .line 346
    invoke-static {p0}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v3

    .line 349
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 350
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "value"

    .line 351
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 353
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/database/Cursor;)V

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 8

    .line 358
    invoke-static {p0}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v3

    .line 361
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 362
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "value"

    .line 363
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 365
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/database/Cursor;)V

    return p2
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 3

    .line 406
    invoke-static {p0}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 408
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "key"

    .line 409
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "value"

    .line 410
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 411
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 415
    invoke-static {p0}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 418
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "key"

    .line 419
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "value"

    .line 420
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    .line 388
    invoke-static {p0}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 390
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "key"

    .line 391
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "value"

    .line 392
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 393
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .line 397
    invoke-static {p0}, Lcom/samsung/android/app/music/preferences/Pref;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/provider/PreferenceProvider;->a(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 399
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "key"

    .line 400
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "value"

    .line 401
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 402
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
