.class Lcom/mapps/android/view/EndingAdView$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/EndingAdView;->Initalize(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/EndingAdView;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/mapps/android/view/EndingAdView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/EndingAdView$11;->this$0:Lcom/mapps/android/view/EndingAdView;

    iput p2, p0, Lcom/mapps/android/view/EndingAdView$11;->val$type:I

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/mapps/android/view/EndingAdView$11;->this$0:Lcom/mapps/android/view/EndingAdView;

    iget v1, p0, Lcom/mapps/android/view/EndingAdView$11;->val$type:I

    invoke-static {v0, v1}, Lcom/mapps/android/view/EndingAdView;->access$18(Lcom/mapps/android/view/EndingAdView;I)V

    return-void
.end method
