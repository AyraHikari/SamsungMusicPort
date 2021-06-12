.class Landroid/support/customtabs/CustomTabsClient$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/customtabs/CustomTabsClient$2;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/customtabs/CustomTabsClient$2;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$callbackName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/customtabs/CustomTabsClient$2;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 207
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsClient$2$2;->this$1:Landroid/support/customtabs/CustomTabsClient$2;

    iput-object p2, p0, Landroid/support/customtabs/CustomTabsClient$2$2;->val$callbackName:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/customtabs/CustomTabsClient$2$2;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 210
    iget-object v0, p0, Landroid/support/customtabs/CustomTabsClient$2$2;->this$1:Landroid/support/customtabs/CustomTabsClient$2;

    iget-object v0, v0, Landroid/support/customtabs/CustomTabsClient$2;->val$callback:Landroid/support/customtabs/CustomTabsCallback;

    iget-object v1, p0, Landroid/support/customtabs/CustomTabsClient$2$2;->val$callbackName:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/customtabs/CustomTabsClient$2$2;->val$args:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/support/customtabs/CustomTabsCallback;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
