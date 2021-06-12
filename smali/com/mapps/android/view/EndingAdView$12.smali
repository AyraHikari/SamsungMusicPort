.class Lcom/mapps/android/view/EndingAdView$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->requestImageFileSave(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;

.field private final synthetic val$fileName:Ljava/lang/String;

.field private final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$12;->this$0:Lcom/mapps/android/view/EndingAdView;

    iput-object p2, p0, Lcom/mapps/android/view/EndingAdView$12;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/mapps/android/view/EndingAdView$12;->val$fileName:Ljava/lang/String;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 336
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$12;->this$0:Lcom/mapps/android/view/EndingAdView;

    iget-object v1, p0, Lcom/mapps/android/view/EndingAdView$12;->val$filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/mapps/android/view/EndingAdView$12;->val$fileName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/mapps/android/view/EndingAdView;->ImageFileSave(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
