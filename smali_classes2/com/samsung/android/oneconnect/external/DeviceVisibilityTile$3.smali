.class Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile$3;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;


# direct methods
.method constructor <init>(Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;Landroid/os/Handler;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile$3;->a:Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    .line 375
    iget-object p2, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile$3;->a:Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;

    invoke-static {p2}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->c(Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;)I

    move-result p2

    .line 376
    iget-object v0, p0, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile$3;->a:Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;

    invoke-static {v0, p2}, Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;->b(Lcom/samsung/android/oneconnect/external/DeviceVisibilityTile;I)V

    const-string v0, "DeviceVisibilityTile"

    const-string v1, "mContentObserver"

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selfChange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", value : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/oneconnect/common/baseutil/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
