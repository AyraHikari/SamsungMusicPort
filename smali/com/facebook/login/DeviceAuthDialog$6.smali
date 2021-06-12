.class Lcom/facebook/login/DeviceAuthDialog$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/DeviceAuthDialog;->presentConfirmation(Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/DeviceAuthDialog;

.field final synthetic val$accessToken:Ljava/lang/String;

.field final synthetic val$dataAccessExpirationTime:Ljava/util/Date;

.field final synthetic val$expirationTime:Ljava/util/Date;

.field final synthetic val$permissions:Lcom/facebook/internal/Utility$PermissionsPair;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$6;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    iput-object p2, p0, Lcom/facebook/login/DeviceAuthDialog$6;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/login/DeviceAuthDialog$6;->val$permissions:Lcom/facebook/internal/Utility$PermissionsPair;

    iput-object p4, p0, Lcom/facebook/login/DeviceAuthDialog$6;->val$accessToken:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/login/DeviceAuthDialog$6;->val$expirationTime:Ljava/util/Date;

    iput-object p6, p0, Lcom/facebook/login/DeviceAuthDialog$6;->val$dataAccessExpirationTime:Ljava/util/Date;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 367
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$6;->this$0:Lcom/facebook/login/DeviceAuthDialog;

    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog$6;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/login/DeviceAuthDialog$6;->val$permissions:Lcom/facebook/internal/Utility$PermissionsPair;

    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog$6;->val$accessToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/login/DeviceAuthDialog$6;->val$expirationTime:Ljava/util/Date;

    iget-object v5, p0, Lcom/facebook/login/DeviceAuthDialog$6;->val$dataAccessExpirationTime:Ljava/util/Date;

    invoke-static/range {v0 .. v5}, Lcom/facebook/login/DeviceAuthDialog;->access$900(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method
