.class public Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;
.super Landroid/service/quicksettings/TileService;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# static fields
.field private static final a:Landroid/content/Intent;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/ContentResolver;

.field private d:I

.field private e:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$DeviceVisibilitySettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->a:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 72
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    .line 46
    iput-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->c:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->d:I

    .line 372
    new-instance v0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile$3;-><init>(Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->e:Landroid/database/ContentObserver;

    const-string v0, "DeviceVisibilityTile"

    const-string v1, "DeviceVisibilityTile"

    const-string v2, ""

    .line 73
    invoke-static {v0, v1, v2}, Lcom/samsung/android/oneconnect/common/baseutil/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->d:I

    return p1
.end method

.method private a()V
    .locals 3

    .line 261
    invoke-virtual {p0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x7f020460

    .line 263
    invoke-static {p0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 266
    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 267
    invoke-static {}, Lcom/samsung/android/oneconnect/common/baseutil/FeatureUtil;->isSepTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a0288

    .line 268
    invoke-virtual {p0, v1}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0289

    .line 269
    invoke-virtual {p0, v1}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const v1, 0x7f0a0287

    .line 271
    invoke-virtual {p0, v1}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0286

    .line 272
    invoke-virtual {p0, v1}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 274
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v2, 0x2

    .line 275
    :cond_1
    invoke-virtual {v0, v2}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 276
    iput v1, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->d:I

    .line 277
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    goto :goto_1

    :cond_2
    const-string v0, "DeviceVisibilityTile"

    const-string v1, "initState"

    const-string v2, "tile is null"

    .line 279
    invoke-static {v0, v1, v2}, Lcom/samsung/android/oneconnect/common/baseutil/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private a(I)V
    .locals 2

    .line 284
    invoke-virtual {p0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-eqz v0, :cond_2

    const v1, 0x7f020460

    .line 286
    invoke-static {p0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 289
    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 290
    invoke-static {}, Lcom/samsung/android/oneconnect/common/baseutil/FeatureUtil;->isSepTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a0288

    .line 291
    invoke-virtual {p0, v1}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0289

    .line 292
    invoke-virtual {p0, v1}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const v1, 0x7f0a0287

    .line 294
    invoke-virtual {p0, v1}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a0286

    .line 295
    invoke-virtual {p0, v1}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v1, 0x2

    .line 297
    :cond_1
    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 298
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    goto :goto_1

    :cond_2
    const-string p1, "DeviceVisibilityTile"

    const-string v0, "updateTile"

    const-string v1, "tile is null"

    .line 300
    invoke-static {p1, v0, v1}, Lcom/samsung/android/oneconnect/common/baseutil/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private a(IZ)V
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/oneconnect/external/ExternalSettingsProvider;->EX_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "device_visibility_enabled"

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/oneconnect/external/ExternalSettingsManager;->saveIntToSettingDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b(IZ)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->c()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;IZ)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->a(IZ)V

    return-void
.end method

.method private b()I
    .locals 4

    .line 313
    iget-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/oneconnect/external/ExternalSettingsProvider;->EX_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "device_visibility_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/oneconnect/external/ExternalSettingsManager;->getIntFromSettingDB(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->d:I

    return p0
.end method

.method private b(IZ)V
    .locals 2

    .line 364
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.oneconnect.DEVICE_VISIBILITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "DEVICE_VISIBILITY_FROM"

    if-eqz p2, :cond_0

    const-string p2, "QuickPannel_detail"

    goto :goto_0

    :cond_0
    const-string p2, "QuickPannel"

    .line 365
    :goto_0
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "DEVICE_VISIBILITY_VALUE"

    .line 368
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    iget-object p1, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->a(I)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;)I
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b()I

    move-result p0

    return p0
.end method

.method private c()V
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/oneconnect/ui/SettingsPermissionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x38800000

    .line 321
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 323
    invoke-virtual {p0, v0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->startActivityAndCollapse(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "DeviceVisibilityTile"

    const-string v1, "startSettingsPermissionActivity"

    const-string v2, "Context is null"

    .line 325
    invoke-static {v0, v1, v2}, Lcom/samsung/android/oneconnect/common/baseutil/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private d()Z
    .locals 9

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy3"

    .line 331
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v0, "false"

    .line 332
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "isSettingsChangesAllowed"

    .line 337
    iget-object v1, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    const/4 v7, 0x1

    if-eqz v1, :cond_2

    const/4 v8, 0x0

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 343
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 344
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "false"

    .line 345
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v8, v1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v8, v1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 354
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    const-string v1, "DeviceVisibilityTile"

    const-string v2, "isAllowSettingChange"

    .line 351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/samsung/android/oneconnect/common/baseutil/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_3

    .line 354
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_2
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :cond_2
    const-string v0, "DeviceVisibilityTile"

    const-string v1, "isAllowSettingChange"

    const-string v2, "Context is null"

    .line 358
    invoke-static {v0, v1, v2}, Lcom/samsung/android/oneconnect/common/baseutil/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_3
    return v7
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const-string v0, "DeviceVisibilityTile"

    const-string v1, "onBind"

    const-string v2, ""

    .line 84
    invoke-static {v0, v1, v2}, Lcom/samsung/android/oneconnect/common/baseutil/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onClick()V
    .locals 6

    .line 120
    invoke-static {}, Lcom/samsung/android/oneconnect/common/baseutil/FeatureUtil;->isSamsungDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->d()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->d:I

    if-nez v0, :cond_4

    .line 123
    iget-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/oneconnect/common/baseutil/FeatureUtil;->isLockNetworkAndSecurity(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile$1;-><init>(Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->unlockAndRun(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 142
    :cond_0
    invoke-static {}, Lcom/samsung/android/oneconnect/utils/BatteryOptimizationUtil;->isIgnoringBatteryOptimization()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/oneconnect/common/util/SettingsUtil;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/oneconnect/common/baseutil/PermissionUtil;->PERMISSIONS_LOCATION:[Ljava/lang/String;

    .line 144
    invoke-static {v0, v3}, Lcom/samsung/android/oneconnect/common/baseutil/PermissionUtil;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 156
    :goto_0
    iput v2, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->d:I

    .line 157
    iget v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->d:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->a(IZ)V

    goto/16 :goto_4

    .line 147
    :cond_3
    :goto_1
    new-instance v0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile$2;-><init>(Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->unlockAndRun(Ljava/lang/Runnable;)V

    goto/16 :goto_4

    .line 161
    :cond_4
    invoke-static {}, Lcom/samsung/android/oneconnect/utils/BatteryOptimizationUtil;->isIgnoringBatteryOptimization()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/oneconnect/common/util/SettingsUtil;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/oneconnect/common/baseutil/PermissionUtil;->PERMISSIONS_LOCATION:[Ljava/lang/String;

    .line 163
    invoke-static {v0, v3}, Lcom/samsung/android/oneconnect/common/baseutil/PermissionUtil;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    .line 168
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v0

    if-ne v0, v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    .line 170
    :goto_2
    iput v2, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->d:I

    .line 171
    iget v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->d:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->a(IZ)V

    goto :goto_4

    .line 166
    :cond_7
    :goto_3
    invoke-direct {p0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->c()V

    goto :goto_4

    :cond_8
    const-string v0, "DeviceVisibilityTile"

    const-string v3, "onClick"

    const-string v4, "isAllowSettingChange() is false"

    .line 175
    invoke-static {v0, v3, v4}, Lcom/samsung/android/oneconnect/common/baseutil/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    const v3, 0x7f0a078e

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    const v5, 0x7f0a0286

    .line 178
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 176
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 179
    iget-object v2, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_9
    const-string v0, "DeviceVisibilityTile"

    const-string v2, "onClick"

    const-string v3, "This is not Samsung device"

    .line 182
    invoke-static {v0, v2, v3}, Lcom/samsung/android/oneconnect/common/baseutil/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    const v2, 0x7f0a0639

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_4
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 78
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onDestroy()V

    const-string v0, "DeviceVisibilityTile"

    const-string v1, "onDestroy"

    const-string v2, ""

    .line 79
    invoke-static {v0, v1, v2}, Lcom/samsung/android/oneconnect/common/baseutil/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartListening()V
    .locals 4

    const-string v0, "DeviceVisibilityTile"

    const-string v1, "onStartListening"

    const-string v2, ""

    .line 90
    invoke-static {v0, v1, v2}, Lcom/samsung/android/oneconnect/common/baseutil/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    .line 93
    iget-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->c:Landroid/content/ContentResolver;

    .line 95
    iget-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->c:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->c:Landroid/content/ContentResolver;

    sget-object v1, Lcom/samsung/android/oneconnect/external/ExternalSettingsProvider;->EX_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->e:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    const-string v0, "DeviceVisibilityTile"

    const-string v1, "onStartListening"

    const-string v2, "ContentResolver is null"

    .line 99
    invoke-static {v0, v1, v2}, Lcom/samsung/android/oneconnect/common/baseutil/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "DeviceVisibilityTile"

    const-string v1, "onStartListening"

    const-string v2, "Context is null"

    .line 102
    invoke-static {v0, v1, v2}, Lcom/samsung/android/oneconnect/common/baseutil/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->a()V

    return-void
.end method

.method public onStopListening()V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->c:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->c:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->e:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    const-string v0, "DeviceVisibilityTile"

    const-string v1, "onStopListening"

    const-string v2, "ContentResolver is null"

    .line 112
    invoke-static {v0, v1, v2}, Lcom/samsung/android/oneconnect/common/baseutil/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_0
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    const-string v0, "DeviceVisibilityTile"

    const-string v1, "onStopListening"

    const-string v2, ""

    .line 115
    invoke-static {v0, v1, v2}, Lcom/samsung/android/oneconnect/common/baseutil/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public semGetDetailView()Landroid/widget/RemoteViews;
    .locals 6

    .line 208
    invoke-direct {p0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->d()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 209
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    .line 210
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f040182

    invoke-direct {v0, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 214
    invoke-static {}, Lcom/samsung/android/oneconnect/common/baseutil/FeatureUtil;->isSepTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0a028b

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    .line 216
    invoke-static {v4}, Lcom/samsung/android/oneconnect/utils/Util;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 214
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v3, 0x7f0a028a

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    .line 217
    invoke-static {v4}, Lcom/samsung/android/oneconnect/utils/Util;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 216
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const v2, 0x7f0f063e

    .line 212
    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 218
    iget-object v1, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    .line 219
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "qs_detail_content_secondary_text_color"

    const/high16 v4, -0x1000000

    .line 218
    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_1

    :cond_1
    const-string v0, "DeviceVisibilityTile"

    const-string v3, "semGetDetailView"

    const-string v4, "isAllowSettingChange() is false"

    .line 222
    invoke-static {v0, v3, v4}, Lcom/samsung/android/oneconnect/common/baseutil/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    const v3, 0x7f0a078e

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    const v5, 0x7f0a0286

    .line 225
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 223
    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public semGetDetailViewTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 189
    invoke-static {}, Lcom/samsung/android/oneconnect/common/baseutil/FeatureUtil;->isSepTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    const v1, 0x7f0a0289

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    const v1, 0x7f0a0286

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public semGetSettingsIntent()Landroid/content/Intent;
    .locals 5

    .line 233
    invoke-direct {p0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->a:Landroid/content/Intent;

    return-object v0

    :cond_0
    const-string v0, "DeviceVisibilityTile"

    const-string v1, "semGetSettingsIntent"

    const-string v2, "isAllowSettingChange is false"

    .line 236
    invoke-static {v0, v1, v2}, Lcom/samsung/android/oneconnect/common/baseutil/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    const v1, 0x7f0a078e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    const v4, 0x7f0a0286

    .line 239
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 237
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public semIsToggleButtonChecked()Z
    .locals 2

    .line 202
    iget v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public semIsToggleButtonExists()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public semSetToggleButtonChecked(Z)V
    .locals 2

    .line 247
    invoke-static {}, Lcom/samsung/android/oneconnect/utils/BatteryOptimizationUtil;->isIgnoringBatteryOptimization()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/oneconnect/common/util/SettingsUtil;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 250
    invoke-virtual {p0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/oneconnect/common/baseutil/PermissionUtil;->PERMISSIONS_LOCATION:[Ljava/lang/String;

    .line 249
    invoke-static {v0, v1}, Lcom/samsung/android/oneconnect/common/baseutil/PermissionUtil;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    iput p1, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->d:I

    const/4 v0, 0x1

    .line 256
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->a(IZ)V

    goto :goto_1

    .line 252
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->c()V

    :goto_1
    return-void
.end method
