.class Landroid/support/v7/widget/SeslProgressBar$AccessibilityEventSender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SeslProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityEventSender"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/SeslProgressBar;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/SeslProgressBar;)V
    .locals 0

    .line 2176
    iput-object p1, p0, Landroid/support/v7/widget/SeslProgressBar$AccessibilityEventSender;->this$0:Landroid/support/v7/widget/SeslProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/SeslProgressBar;Landroid/support/v7/widget/SeslProgressBar$1;)V
    .locals 0

    .line 2176
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslProgressBar$AccessibilityEventSender;-><init>(Landroid/support/v7/widget/SeslProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2179
    iget-object v0, p0, Landroid/support/v7/widget/SeslProgressBar$AccessibilityEventSender;->this$0:Landroid/support/v7/widget/SeslProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslProgressBar;->sendAccessibilityEvent(I)V

    return-void
.end method
