.class Lcom/facebook/login/widget/LoginButton$LoginClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/widget/LoginButton$LoginClickListener;->performLogout(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/login/widget/LoginButton$LoginClickListener;

.field final synthetic val$loginManager:Lcom/facebook/login/LoginManager;


# direct methods
.method constructor <init>(Lcom/facebook/login/widget/LoginButton$LoginClickListener;Lcom/facebook/login/LoginManager;)V
    .locals 0

    .line 832
    iput-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener$1;->this$1:Lcom/facebook/login/widget/LoginButton$LoginClickListener;

    iput-object p2, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener$1;->val$loginManager:Lcom/facebook/login/LoginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 834
    iget-object p1, p0, Lcom/facebook/login/widget/LoginButton$LoginClickListener$1;->val$loginManager:Lcom/facebook/login/LoginManager;

    invoke-virtual {p1}, Lcom/facebook/login/LoginManager;->logOut()V

    return-void
.end method
