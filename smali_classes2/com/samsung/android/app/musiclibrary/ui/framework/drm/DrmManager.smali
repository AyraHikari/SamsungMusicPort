.class public final Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OptionInfo;,
        Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;,
        Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
    }
.end annotation


# static fields
.field private static a:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

.field private static final b:Ljava/lang/String;

.field private static final c:I

.field private static final d:I

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static final h:I

.field private static final i:I

.field private static final j:I

.field private static final k:I

.field private static final l:I

.field private static final m:I

.field private static final n:I

.field private static final o:I

.field private static final p:I

.field private static final q:I

.field private static final r:I

.field private static final s:I

.field private static final t:I

.field private static final u:I

.field private static final v:I

.field private static final w:I

.field private static final z:Z


# instance fields
.field private A:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;

.field private B:I

.field private C:Ljava/lang/String;

.field private final D:Landroid/drm/DrmManagerClient$OnEventListener;

.field private final E:Landroid/drm/DrmManagerClient$OnErrorListener;

.field private final x:Landroid/content/Context;

.field private y:Landroid/drm/DrmManagerClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 146
    sget-object v0, Lcom/samsung/android/app/music/support/android/drm/DrmInfoRequestCompat;->DRM_PATH:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->b:Ljava/lang/String;

    .line 148
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmInfoRequestCompat;->TYPE_GET_DRMFILE_INFO:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->c:I

    .line 150
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmInfoRequestCompat;->TYPE_GET_OPTION_MENU:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->d:I

    .line 156
    sget-object v0, Lcom/samsung/android/app/music/support/android/drm/DrmInfoRequestCompat;->STATUS:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->e:Ljava/lang/String;

    .line 164
    sget-object v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/ConstraintsColumnsCompat;->LICENSE_ORIGINAL_INTERVAL:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->f:Ljava/lang/String;

    .line 167
    sget-object v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/ConstraintsColumnsCompat;->LICENSE_CATEGORY:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->g:Ljava/lang/String;

    .line 173
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_NORIGHT:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->h:I

    .line 176
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_UNLIM:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->i:I

    .line 179
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_COUNT:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->j:I

    .line 182
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_FROM:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->k:I

    .line 185
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_UNTIL:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->l:I

    .line 188
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_FROM_UNTIL:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->m:I

    .line 191
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_COUNT_FROM:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->n:I

    .line 194
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_COUNT_UNTIL:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->o:I

    .line 197
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_COUNT_FROM_UNTIL:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->p:I

    .line 200
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_EXPIRATION_AFTER_FIRSTUSE:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->q:I

    .line 203
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/PlayReadyLicenseCategoryCompat;->DRM_LICENSE_STATE_FORCE_SYNC:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->r:I

    .line 210
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/LicenseCategoryCompat;->DRM2_UNLIMITED:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->s:I

    .line 212
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/LicenseCategoryCompat;->DRM2_COUNT:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->t:I

    .line 214
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/LicenseCategoryCompat;->DRM2_DATETIME:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->u:I

    .line 216
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/LicenseCategoryCompat;->DRM2_INTERVAL:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->v:I

    .line 218
    sget v0, Lcom/samsung/android/app/music/support/android/drm/DrmStore/LicenseCategoryCompat;->DRM2_TIMED_COUNT:I

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->w:I

    .line 814
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->z:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 977
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->B:I

    .line 1348
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->D:Landroid/drm/DrmManagerClient$OnEventListener;

    .line 1406
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->E:Landroid/drm/DrmManagerClient$OnErrorListener;

    .line 266
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->x:Landroid/content/Context;

    .line 268
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->y:Landroid/drm/DrmManagerClient;

    .line 270
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->y:Landroid/drm/DrmManagerClient;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->D:Landroid/drm/DrmManagerClient$OnEventListener;

    invoke-virtual {p1, v0}, Landroid/drm/DrmManagerClient;->setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V

    .line 272
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->y:Landroid/drm/DrmManagerClient;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->E:Landroid/drm/DrmManagerClient$OnErrorListener;

    invoke-virtual {p1, v0}, Landroid/drm/DrmManagerClient;->setOnErrorListener(Landroid/drm/DrmManagerClient$OnErrorListener;)V

    return-void
.end method

.method private a(Landroid/content/ContentValues;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p1, :cond_0

    const-string p1, "MusicDrm"

    const-string v1, "getCategory constraint is null "

    .line 1268
    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 1271
    :cond_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->g:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 1277
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "MusicDrm"

    .line 1278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCategory: categoryType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v0, p1

    const/4 p1, -0x1

    .line 1280
    :goto_0
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_1
    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;Ljava/lang/String;)I
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->e(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private a(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
    .locals 5

    const-string v0, "MusicDrm"

    .line 884
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInvalidPlayReadyDrmPopup path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;-><init>()V

    .line 886
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->H:Z

    const/16 v2, 0x16

    if-eqz v1, :cond_0

    .line 887
    iput v2, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->a:I

    const/16 p1, 0xb

    .line 888
    iput p1, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->b:I

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x2

    packed-switch p1, :pswitch_data_0

    .line 924
    iput v1, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->a:I

    goto :goto_0

    .line 899
    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->x:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 p1, 0x18

    .line 900
    iput p1, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->a:I

    const/4 p1, 0x5

    .line 901
    iput p1, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->b:I

    .line 902
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->B:I

    .line 903
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->A:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;

    if-eqz p1, :cond_1

    .line 904
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->A:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;->onAcquireStatus(Ljava/lang/String;I)V

    .line 907
    :cond_1
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$1;

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;Ljava/lang/String;)V

    .line 912
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$1;->start()V

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    .line 915
    iput v2, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->a:I

    const/16 p1, 0xa

    .line 916
    iput p1, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->b:I

    goto :goto_0

    .line 918
    :cond_3
    iput v2, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->a:I

    const/16 p1, 0x9

    .line 919
    iput p1, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->b:I

    goto :goto_0

    .line 894
    :pswitch_1
    iput v3, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->a:I

    .line 895
    iput v3, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->b:I

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(ILjava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
    .locals 2

    .line 529
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;-><init>()V

    const/4 v1, 0x0

    .line 531
    iput v1, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->a:I

    .line 533
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 537
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->f(Ljava/lang/String;)I

    move-result p1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_1

    const/4 p3, 0x2

    if-gt p1, p3, :cond_1

    const/16 p3, 0xb

    .line 541
    iput p3, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->a:I

    const/4 p3, 0x4

    .line 543
    iput p3, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->b:I

    .line 545
    iput p1, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->e:I

    .line 547
    iput-object p2, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->d:Ljava/lang/String;

    goto :goto_0

    .line 553
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->b(ILjava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;

    move-result-object v0

    .line 555
    iput-object p2, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->d:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v0
.end method

.method private a(Ljava/lang/String;I)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
    .locals 3

    const-string v0, "MusicDrm"

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlayRaedyPopup path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;

    move-result-object p2

    .line 516
    iput-object p1, p2, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->d:Ljava/lang/String;

    goto :goto_0

    .line 519
    :cond_0
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;

    invoke-direct {p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;-><init>()V

    const/4 p1, 0x0

    .line 521
    iput p1, p2, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->a:I

    :goto_0
    return-object p2
.end method

.method public static a(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;
    .locals 1

    .line 120
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    .line 125
    :cond_0
    sget-object p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->C:Ljava/lang/String;

    return-object p0
.end method

.method private static a()Z
    .locals 2

    .line 824
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/lib/libomafldrm.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 825
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private a(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;I)Z
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a(I)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Landroid/drm/DrmManagerClient;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->y:Landroid/drm/DrmManagerClient;

    return-object p0
.end method

.method private b(ILjava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
    .locals 5

    .line 833
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;-><init>()V

    .line 835
    new-instance v1, Landroid/drm/DrmInfoRequest;

    sget v2, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->c:I

    const-string v3, "application/vnd.oma.drm.content"

    invoke-direct {v1, v2, v3}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 837
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 839
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->y:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v1

    const/4 v2, 0x2

    :try_start_0
    const-string v3, "type"

    .line 843
    invoke-virtual {v1, v3}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 845
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 853
    :goto_0
    sget-boolean v3, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->z:Z

    const/4 v4, 0x3

    if-eqz v3, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_2

    .line 860
    :cond_1
    iput v2, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->a:I

    const/16 p1, 0xb

    .line 861
    iput p1, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->b:I

    return-object v0

    :cond_2
    if-eq v1, v4, :cond_3

    if-ne v1, v2, :cond_4

    :cond_3
    if-eq p1, v2, :cond_6

    if-ne p1, v4, :cond_4

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    const/16 p1, 0xc

    .line 872
    iput p1, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->a:I

    .line 873
    iput v2, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->b:I

    .line 874
    iput v4, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->c:I

    goto :goto_2

    :cond_5
    const/16 p1, 0xd

    .line 876
    iput p1, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->a:I

    .line 877
    iput v2, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->b:I

    goto :goto_2

    .line 867
    :cond_6
    :goto_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->f:Ljava/lang/String;

    const/16 p1, 0xe

    .line 868
    iput p1, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->a:I

    const/4 p1, 0x1

    .line 869
    iput p1, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->b:I

    :goto_2
    return-object v0

    :catch_0
    const/16 p1, 0x17

    .line 848
    iput p1, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->a:I

    .line 849
    iput v2, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->b:I

    return-object v0
.end method

.method private b(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "connectivity"

    .line 966
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_0

    .line 968
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 969
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "MusicDrm"

    .line 973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNetworkConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method static synthetic c(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->A:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)I
    .locals 0

    .line 103
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->B:I

    return p0
.end method

.method private e(Ljava/lang/String;)I
    .locals 3

    .line 988
    new-instance v0, Landroid/drm/DrmInfoRequest;

    .line 989
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 990
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 991
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->B:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->B:I

    .line 992
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->C:Ljava/lang/String;

    .line 993
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->y:Landroid/drm/DrmManagerClient;

    invoke-virtual {p1, v0}, Landroid/drm/DrmManagerClient;->acquireRights(Landroid/drm/DrmInfoRequest;)I

    move-result p1

    return p1
.end method

.method private f(Ljava/lang/String;)I
    .locals 3

    .line 1004
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->y:Landroid/drm/DrmManagerClient;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p1

    .line 1006
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a(Landroid/content/ContentValues;)I

    move-result v0

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->t:I

    const/4 v2, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "remaining_repeat_count"

    .line 1007
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return v2

    :cond_0
    const-string v0, "MusicDrm"

    .line 1011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRemainedCounts() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_1
    return v2
.end method

.method private g(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1434
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ".dcf"

    .line 1435
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const-string v1, ".pya"

    .line 1437
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".wmv"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".wma"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ".pyv"

    .line 1438
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1450
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ".dcf"

    .line 1452
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "application/vnd.oma.drm.content"

    return-object p1

    :cond_1
    const-string v1, ".pya"

    .line 1454
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "audio/vnd.ms-playready.media.pya"

    return-object p1

    :cond_2
    const-string v1, ".wmv"

    .line 1456
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "video/x-ms-wmv"

    return-object p1

    :cond_3
    const-string v1, ".wma"

    .line 1458
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "audio/x-ms-wma"

    return-object p1

    :cond_4
    const-string v1, ".pyv"

    .line 1460
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p1, "video/vnd.ms-playready.media.pyv"

    return-object p1

    :cond_5
    const-string v1, ".avi"

    .line 1462
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p1, "video/mux/AVI"

    return-object p1

    :cond_6
    const-string v1, ".mkv"

    .line 1464
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p1, "video/mux/MKV"

    return-object p1

    :cond_7
    const-string v1, ".divx"

    .line 1466
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "video/mux/DivX"

    return-object p1

    :cond_8
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;
    .locals 3

    const-string v0, "MusicDrm"

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDrmPopupInfo path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fromList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 379
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;-><init>()V

    .line 381
    iput v1, p1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->a:I

    return-object p1

    .line 388
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->g(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 412
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;

    invoke-direct {p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;-><init>()V

    .line 414
    iput v1, p2, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->a:I

    .line 416
    iput-object p1, p2, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->d:Ljava/lang/String;

    move-object p1, p2

    goto :goto_0

    .line 394
    :pswitch_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->y:Landroid/drm/DrmManagerClient;

    invoke-virtual {p2, p1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result p2

    .line 396
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a(Ljava/lang/String;I)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;

    move-result-object p1

    goto :goto_0

    .line 402
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->y:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v0

    .line 404
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a(ILjava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;

    move-result-object p1

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->A:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, ""

    .line 299
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->y:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0, p1, v1}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public b(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 2

    .line 473
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a(Ljava/lang/String;Z)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;

    move-result-object p1

    .line 475
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "type"

    .line 477
    iget v1, p1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->a:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "text1"

    .line 479
    iget v1, p1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->b:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "text2"

    .line 481
    iget v1, p1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->c:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "count"

    .line 483
    iget v1, p1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->e:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "url"

    .line 485
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->f:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "path"

    .line 487
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$PopupInfo;->d:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1023
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1024
    new-instance v1, Landroid/drm/DrmInfoRequest;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1026
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1027
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->y:Landroid/drm/DrmManagerClient;

    invoke-virtual {p1, v1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object p1

    const-string v0, "URL"

    .line 1028
    invoke-virtual {p1, v0}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OptionInfo;
    .locals 5

    .line 1308
    new-instance v0, Landroid/drm/DrmInfoRequest;

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->d:I

    const-string v2, "application/vnd.oma.drm.content"

    invoke-direct {v0, v1, v2}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 1309
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1310
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->y:Landroid/drm/DrmManagerClient;

    invoke-virtual {p1, v0}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object p1

    .line 1311
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OptionInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OptionInfo;-><init>()V

    if-eqz p1, :cond_0

    .line 1313
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MusicDrm"

    .line 1314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status req1: TYPE_GET_OPTION_MENU"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "fail"

    .line 1315
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bRingtone"

    .line 1316
    invoke-virtual {p1, v1}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OptionInfo;->a:Z

    const-string v1, "bSendAs"

    .line 1317
    invoke-virtual {p1, v1}, Landroid/drm/DrmInfo;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OptionInfo;->b:Z

    :cond_0
    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 0

    .line 1329
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->c(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OptionInfo;

    move-result-object p1

    .line 1331
    iget-boolean p1, p1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OptionInfo;->a:Z

    return p1
.end method
