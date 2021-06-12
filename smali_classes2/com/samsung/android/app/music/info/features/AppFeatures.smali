.class public final Lcom/samsung/android/app/music/info/features/AppFeatures;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/utils/features/CoreAppFeatures;
.implements Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;


# static fields
.field private static final K:Lcom/samsung/android/sdk/look/Slook;

.field private static final L:Z

.field private static final M:Z

.field public static final a:Z

.field public static final b:Z

.field public static final c:Z

.field public static final d:Z

.field public static final e:Z

.field public static final f:Z

.field public static final g:Z

.field public static final h:Z

.field public static final i:Z

.field public static final j:Z

.field public static final k:Z

.field public static final l:Z

.field public static final m:Z

.field public static final n:Z

.field public static final o:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 23
    sget-object v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->p:Ljava/lang/String;

    const-string v1, "gt510"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->p:Ljava/lang/String;

    const-string v3, "gt5note10"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->p:Ljava/lang/String;

    const-string v3, "gt58"

    .line 25
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->p:Ljava/lang/String;

    const-string v3, "gt5note8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->a:Z

    .line 27
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->IS_MASS_MODEL:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/samsung/sectionmap/SmartVolumeLib;->SMART_VOLUME_ENABLED:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    sput-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->b:Z

    .line 33
    new-instance v0, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->K:Lcom/samsung/android/sdk/look/Slook;

    .line 47
    invoke-static {}, Lcom/samsung/android/app/music/info/features/AppFeatures;->a()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->c:Z

    .line 55
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->f_:Z

    if-eqz v0, :cond_3

    const-string v0, "CHINA"

    sget-object v3, Lcom/samsung/android/app/music/info/features/AppFeatures;->q:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    sput-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->d:Z

    const-string v0, "ff272d30"

    .line 59
    sget-object v3, Lcom/samsung/android/app/music/info/features/AppFeatures;->y:Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->e:Z

    .line 62
    invoke-static {}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->isSupportGlobalEffect()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->L:Z

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-ge v0, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    sput-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->M:Z

    .line 66
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->L:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->x:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->M:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->p:Ljava/lang/String;

    const-string v3, "zero"

    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->p:Ljava/lang/String;

    const-string v3, "zen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const/4 v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    :goto_5
    sput-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->f:Z

    .line 70
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->A:Z

    sput-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->g:Z

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-gt v0, v3, :cond_7

    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_6
    sput-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->h:Z

    .line 75
    sget-object v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->p:Ljava/lang/String;

    const-string v3, "trhplte"

    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->p:Ljava/lang/String;

    const-string v3, "trelte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->p:Ljava/lang/String;

    const-string v3, "tbelte"

    .line 77
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->p:Ljava/lang/String;

    const-string v3, "trlte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->p:Ljava/lang/String;

    const-string v3, "tblte"

    .line 78
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->p:Ljava/lang/String;

    const-string v3, "SC-01G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->p:Ljava/lang/String;

    const-string v3, "SCL24"

    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->p:Ljava/lang/String;

    const-string v3, "tre3calte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->p:Ljava/lang/String;

    const-string v3, "tr3calte"

    .line 80
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->p:Ljava/lang/String;

    const-string v3, "tre3g"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->p:Ljava/lang/String;

    const-string v3, "muscat3calte"

    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_7

    :cond_8
    const/4 v0, 0x0

    goto :goto_8

    :cond_9
    :goto_7
    const/4 v0, 0x1

    :goto_8
    sput-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->i:Z

    const-string v0, "market"

    const-string v3, "preload"

    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "KOREA"

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/feature/SystemPropertyFeatures;->q:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_9

    :cond_a
    const/4 v0, 0x0

    :goto_9
    sput-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    .line 88
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    xor-int/2addr v0, v2

    sput-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->k:Z

    .line 90
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v3, 0x18f9e

    if-lt v0, v3, :cond_b

    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    :cond_b
    sput-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->l:Z

    .line 93
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    sput-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->m:Z

    .line 97
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    sput-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->n:Z

    .line 102
    sget-object v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->C:Ljava/lang/String;

    const-string v1, "playspeed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v2

    sput-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->o:Z

    return-void
.end method

.method private static a()Z
    .locals 2

    .line 37
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->K:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    const-string v0, "EdgePanel"

    const-string v1, "Slook is not supported!!!"

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method
