.class public final Lcom/samsung/android/app/music/main/MyMusicTabFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/main/MyMusicTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 300
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$Companion;-><init>()V

    return-void
.end method

.method private final a()Z
    .locals 3

    const-string v0, ""

    :try_start_0
    const-string v1, "persist.omc.sales_code"

    .line 309
    invoke-static {v1}, Lcom/samsung/android/app/music/support/android/os/SystemPropertiesCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemPropertiesCompat.g\u2026\"persist.omc.sales_code\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :try_start_1
    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ro.csc.sales_code"

    .line 311
    invoke-static {v0}, Lcom/samsung/android/app/music/support/android/os/SystemPropertiesCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SystemPropertiesCompat.get(\"ro.csc.sales_code\")"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 312
    :try_start_2
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ril.sales_code"

    .line 313
    invoke-static {v1}, Lcom/samsung/android/app/music/support/android/os/SystemPropertiesCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemPropertiesCompat.get(\"ril.sales_code\")"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v1, v0

    goto :goto_0

    :catch_1
    nop

    :cond_1
    :goto_0
    const-string v0, "PAP"

    .line 319
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "FOP"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "LDU"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method private final a(Landroid/content/Context;)Z
    .locals 2

    .line 323
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "shopdemo"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/main/MyMusicTabFragment$Companion;)Z
    .locals 0

    .line 300
    invoke-direct {p0}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$Companion;->a()Z

    move-result p0

    return p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/main/MyMusicTabFragment$Companion;Landroid/content/Context;)Z
    .locals 0

    .line 300
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/main/MyMusicTabFragment$Companion;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
