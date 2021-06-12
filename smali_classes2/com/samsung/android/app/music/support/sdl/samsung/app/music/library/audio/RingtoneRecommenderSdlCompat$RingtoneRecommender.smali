.class Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$RingtoneRecommender;
.super Lcom/samsung/audio/Smat;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RingtoneRecommender"
.end annotation


# static fields
.field private static sGetInfoMethod:Ljava/lang/reflect/Method;

.field private static sGetStatMethod:Ljava/lang/reflect/Method;

.field private static sIsExtractableMethod:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/samsung/audio/Smat;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$1;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$RingtoneRecommender;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo()J
    .locals 4

    .line 104
    :try_start_0
    invoke-super {p0}, Lcom/samsung/audio/Smat;->getInfo()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$RingtoneRecommender;->sGetInfoMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 108
    const-class v0, Lcom/samsung/audio/Smat;

    const-string v2, "get_info"

    move-object v3, v1

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$RingtoneRecommender;->sGetInfoMethod:Ljava/lang/reflect/Method;

    .line 110
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$RingtoneRecommender;->sGetInfoMethod:Ljava/lang/reflect/Method;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getState()I
    .locals 4

    .line 86
    :try_start_0
    invoke-super {p0}, Lcom/samsung/audio/Smat;->getState()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$RingtoneRecommender;->sGetStatMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 90
    const-class v0, Lcom/samsung/audio/Smat;

    const-string v2, "get_stat"

    move-object v3, v1

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$RingtoneRecommender;->sGetStatMethod:Ljava/lang/reflect/Method;

    .line 92
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$RingtoneRecommender;->sGetStatMethod:Ljava/lang/reflect/Method;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const/4 v0, -0x3

    :goto_0
    return v0
.end method

.method public isExtractable()Z
    .locals 4

    .line 122
    :try_start_0
    invoke-super {p0}, Lcom/samsung/audio/Smat;->isExtractable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$RingtoneRecommender;->sIsExtractableMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 126
    const-class v0, Lcom/samsung/audio/Smat;

    const-string v2, "is_extractable"

    move-object v3, v1

    check-cast v3, [Ljava/lang/Class;

    .line 127
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$RingtoneRecommender;->sIsExtractableMethod:Ljava/lang/reflect/Method;

    .line 129
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/samsung/app/music/library/audio/RingtoneRecommenderSdlCompat$RingtoneRecommender;->sGetInfoMethod:Ljava/lang/reflect/Method;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
