.class public Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoLoggingOnTouchListener"
.end annotation


# instance fields
.field private existingOnTouchListener:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private hostView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mapping:Lcom/facebook/appevents/codeless/internal/EventBinding;

.field private rootView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private supportCodelessLogging:Z


# direct methods
.method public constructor <init>(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;->supportCodelessLogging:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {p3}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getExistingOnTouchListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;->existingOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 58
    iput-object p1, p0, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;->mapping:Lcom/facebook/appevents/codeless/internal/EventBinding;

    .line 59
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;->hostView:Ljava/lang/ref/WeakReference;

    .line 60
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;->rootView:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;->supportCodelessLogging:Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private logEvent()V
    .locals 6

    .line 76
    iget-object v0, p0, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;->mapping:Lcom/facebook/appevents/codeless/internal/EventBinding;

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;->mapping:Lcom/facebook/appevents/codeless/internal/EventBinding;

    invoke-virtual {v0}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getEventName()Ljava/lang/String;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;->mapping:Lcom/facebook/appevents/codeless/internal/EventBinding;

    iget-object v2, p0, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;->rootView:Ljava/lang/ref/WeakReference;

    .line 83
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;->hostView:Ljava/lang/ref/WeakReference;

    .line 84
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 81
    invoke-static {v1, v2, v3}, Lcom/facebook/appevents/codeless/CodelessMatcher;->getParameters(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "_valueToSum"

    .line 87
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "_valueToSum"

    .line 88
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_valueToSum"

    .line 91
    invoke-static {v2}, Lcom/facebook/appevents/internal/AppEventUtility;->normalizePrice(Ljava/lang/String;)D

    move-result-wide v4

    .line 89
    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_1
    const-string v2, "_is_fb_codeless"

    const-string v3, "1"

    .line 94
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener$1;-><init>(Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getSupportCodelessLogging()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;->supportCodelessLogging:Z

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 66
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;->logEvent()V

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;->existingOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;->existingOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 72
    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
