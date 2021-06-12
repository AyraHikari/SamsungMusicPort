.class final Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$castingFinderListener$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$castingFinderListener$2;->invoke()Lcom/samsung/android/castingfindermanager/CastingFinderManager$CastingFinderListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$castingFinderListener$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$castingFinderListener$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$castingFinderListener$2$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$castingFinderListener$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDevicesAvailable(Z)V
    .locals 3

    const-string v0, "SMUSIC-M2TvManager"

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDevicesAvailable() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$castingFinderListener$2$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$castingFinderListener$2;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$castingFinderListener$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;->access$notifyDeviceAvailable(Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager;Z)V

    return-void
.end method
