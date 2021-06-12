.class Lcom/facebook/applinks/FacebookAppLinkResolver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/applinks/FacebookAppLinkResolver;->getAppLinkFromUrlInBackground(Landroid/net/Uri;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation<",
        "Ljava/util/Map<",
        "Landroid/net/Uri;",
        "Lbolts/AppLink;",
        ">;",
        "Lbolts/AppLink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/applinks/FacebookAppLinkResolver;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/facebook/applinks/FacebookAppLinkResolver;Landroid/net/Uri;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$1;->this$0:Lcom/facebook/applinks/FacebookAppLinkResolver;

    iput-object p2, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/AppLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task<",
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lbolts/AppLink;",
            ">;>;)",
            "Lbolts/AppLink;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    invoke-virtual {p1}, Lbolts/Task;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lcom/facebook/applinks/FacebookAppLinkResolver$1;->val$uri:Landroid/net/Uri;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbolts/AppLink;

    return-object p1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    invoke-virtual {p0, p1}, Lcom/facebook/applinks/FacebookAppLinkResolver$1;->then(Lbolts/Task;)Lbolts/AppLink;

    move-result-object p1

    return-object p1
.end method
