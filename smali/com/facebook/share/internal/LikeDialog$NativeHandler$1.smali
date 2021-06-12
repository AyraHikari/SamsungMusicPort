.class Lcom/facebook/share/internal/LikeDialog$NativeHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/DialogPresenter$ParameterProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeDialog$NativeHandler;->createAppCall(Lcom/facebook/share/internal/LikeContent;)Lcom/facebook/internal/AppCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/share/internal/LikeDialog$NativeHandler;

.field final synthetic val$content:Lcom/facebook/share/internal/LikeContent;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeDialog$NativeHandler;Lcom/facebook/share/internal/LikeContent;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/facebook/share/internal/LikeDialog$NativeHandler$1;->this$1:Lcom/facebook/share/internal/LikeDialog$NativeHandler;

    iput-object p2, p0, Lcom/facebook/share/internal/LikeDialog$NativeHandler$1;->val$content:Lcom/facebook/share/internal/LikeContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLegacyParameters()Landroid/os/Bundle;
    .locals 2

    const-string v0, "LikeDialog"

    const-string v1, "Attempting to present the Like Dialog with an outdated Facebook app on the device"

    .line 213
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public getParameters()Landroid/os/Bundle;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/facebook/share/internal/LikeDialog$NativeHandler$1;->val$content:Lcom/facebook/share/internal/LikeContent;

    invoke-static {v0}, Lcom/facebook/share/internal/LikeDialog;->access$200(Lcom/facebook/share/internal/LikeContent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
