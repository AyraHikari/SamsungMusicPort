.class public Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getAccessibilityDelegate(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;
    .locals 1

    .line 46
    new-instance v0, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;-><init>(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)V

    return-object v0
.end method
