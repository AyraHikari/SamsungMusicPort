.class public Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/codeless/CodelessMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MatchedView"
.end annotation


# instance fields
.field private view:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private viewMapKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->view:Ljava/lang/ref/WeakReference;

    .line 182
    iput-object p2, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->viewMapKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->view:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0
.end method

.method public getViewMapKey()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->viewMapKey:Ljava/lang/String;

    return-object v0
.end method
