.class Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/privatemode/operation/FileOperation$IprogressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a(JLjava/lang/String;Ljava/lang/String;)I
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

    .line 383
    iput-object p1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$1;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$1;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    iget-object v1, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$1;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    .line 388
    invoke-static {v1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread$1;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;

    invoke-static {v2}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->b(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;->a(Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperationThread;ILjava/lang/String;I)V

    return-void
.end method
