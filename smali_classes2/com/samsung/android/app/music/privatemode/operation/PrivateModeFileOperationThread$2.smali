.class Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 0

    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 462
    iget-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$2;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    invoke-static {p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->c(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;)Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->a(Landroid/content/Context;I)V

    return-void
.end method
