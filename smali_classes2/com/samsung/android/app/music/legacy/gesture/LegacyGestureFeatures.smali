.class public Lcom/samsung/android/app/music/legacy/gesture/LegacyGestureFeatures;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static c:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const-string v0, "ja3g"

    const-string v1, "jalte"

    const-string v2, "jflte"

    const-string v3, "jactivelte"

    const-string v4, "jftdd"

    const-string v5, "jfvelte"

    const-string v6, "jsglte"

    const-string v7, "k3g"

    const-string v8, "klte"

    const-string v9, "kccat6xx"

    const-string v10, "ks01lte"

    const-string v11, "h3g"

    const-string v12, "ha3g"

    const-string v13, "hlte"

    const-string v14, "hllte"

    const-string v15, "htdlte"

    const-string v16, "SC-04F"

    const-string v17, "SC-02G"

    const-string v18, "SCL23"

    const-string v19, "SC-04E"

    const-string v20, "SC-02F"

    const-string v21, "lentislte"

    const-string v22, "slte"

    .line 15
    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/legacy/gesture/LegacyGestureFeatures;->a:[Ljava/lang/String;

    const-string v0, "Madrid"

    const-string v1, "ASH"

    const-string v2, "SC-01F"

    const-string v3, "SCL22"

    .line 20
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/legacy/gesture/LegacyGestureFeatures;->b:[Ljava/lang/String;

    return-void
.end method

.method public static a()Z
    .locals 2

    .line 26
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SDL:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 29
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/legacy/gesture/LegacyGestureFeatures;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 30
    invoke-static {}, Lcom/samsung/android/app/music/legacy/gesture/LegacyGestureFeatures;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/music/legacy/gesture/LegacyGestureFeatures;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/legacy/gesture/LegacyGestureFeatures;->c:Ljava/lang/Boolean;

    .line 32
    :cond_3
    sget-object v0, Lcom/samsung/android/app/music/legacy/gesture/LegacyGestureFeatures;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static b()Z
    .locals 6

    .line 36
    sget-object v0, Lcom/samsung/android/app/music/legacy/gesture/LegacyGestureFeatures;->a:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 37
    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static c()Z
    .locals 6

    .line 45
    sget-object v0, Lcom/samsung/android/app/music/legacy/gesture/LegacyGestureFeatures;->b:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 46
    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
