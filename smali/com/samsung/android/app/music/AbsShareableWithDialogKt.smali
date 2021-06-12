.class public final Lcom/samsung/android/app/music/AbsShareableWithDialogKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Landroid/content/SharedPreferences;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/AbsShareableWithDialogKt;->b(Landroid/content/SharedPreferences;Z)V

    return-void
.end method

.method public static final synthetic a(Landroid/content/SharedPreferences;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/app/music/AbsShareableWithDialogKt;->b(Landroid/content/SharedPreferences;)Z

    move-result p0

    return p0
.end method

.method private static final b(Landroid/content/SharedPreferences;Z)V
    .locals 1

    .line 271
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "editor"

    .line 272
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "show_share_popup"

    xor-int/lit8 p1, p1, 0x1

    .line 269
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 273
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static final b(Landroid/content/SharedPreferences;)Z
    .locals 2

    const-string v0, "show_share_popup"

    const/4 v1, 0x1

    .line 268
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method
