.class Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->logEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;

.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$params:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate$1;->this$0:Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;

    iput-object p2, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate$1;->val$eventName:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate$1;->val$params:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 119
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate$1;->val$eventName:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate$1;->val$params:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
