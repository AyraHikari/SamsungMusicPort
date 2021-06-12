.class final Lcom/facebook/share/internal/LikeActionController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/share/internal/LikeActionController$CreationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->handleOnActivityResult(IILandroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$requestCode:I

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    .line 221
    iput p1, p0, Lcom/facebook/share/internal/LikeActionController$1;->val$requestCode:I

    iput p2, p0, Lcom/facebook/share/internal/LikeActionController$1;->val$resultCode:I

    iput-object p3, p0, Lcom/facebook/share/internal/LikeActionController$1;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookException;)V
    .locals 2

    if-nez p2, :cond_0

    .line 227
    iget p2, p0, Lcom/facebook/share/internal/LikeActionController$1;->val$requestCode:I

    iget v0, p0, Lcom/facebook/share/internal/LikeActionController$1;->val$resultCode:I

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$1;->val$data:Landroid/content/Intent;

    invoke-static {p1, p2, v0, v1}, Lcom/facebook/share/internal/LikeActionController;->access$000(Lcom/facebook/share/internal/LikeActionController;IILandroid/content/Intent;)V

    goto :goto_0

    .line 232
    :cond_0
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$100()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
