.class Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;


# direct methods
.method constructor <init>(Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile$1;->a:Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 127
    invoke-static {}, Lcom/samsung/android/oneconnect/utils/BatteryOptimizationUtil;->isIgnoringBatteryOptimization()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile$1;->a:Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;

    .line 128
    invoke-virtual {v0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/oneconnect/common/util/SettingsUtil;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile$1;->a:Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;

    .line 130
    invoke-virtual {v0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/oneconnect/common/baseutil/PermissionUtil;->PERMISSIONS_LOCATION:[Ljava/lang/String;

    .line 129
    invoke-static {v0, v1}, Lcom/samsung/android/oneconnect/common/baseutil/PermissionUtil;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile$1;->a:Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;

    invoke-virtual {v0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v0

    .line 136
    iget-object v1, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile$1;->a:Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v1, v3}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->a(Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;I)I

    .line 137
    iget-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile$1;->a:Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;

    iget-object v1, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile$1;->a:Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;

    invoke-static {v1}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b(Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->a(Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;IZ)V

    goto :goto_2

    .line 132
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile$1;->a:Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;

    invoke-static {v0}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->a(Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;)V

    :goto_2
    return-void
.end method
