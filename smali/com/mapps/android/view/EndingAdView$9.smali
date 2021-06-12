.class Lcom/mapps/android/view/EndingAdView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->setLoaction(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;

.field private final synthetic val$b:Z


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$9;->this$0:Lcom/mapps/android/view/EndingAdView;

    iput-boolean p2, p0, Lcom/mapps/android/view/EndingAdView$9;->val$b:Z

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 263
    iget-boolean v0, p0, Lcom/mapps/android/view/EndingAdView$9;->val$b:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    .line 264
    :goto_0
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$9;->this$0:Lcom/mapps/android/view/EndingAdView;

    invoke-static {v2}, Lcom/mapps/android/view/EndingAdView;->access$11(Lcom/mapps/android/view/EndingAdView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "Loaction"

    const-string v4, "Loaction"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/mapps/android/share/ShareUtil;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
