.class Lcom/mapps/android/view/AdView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$3;->this$0:Lcom/mapps/android/view/AdView;

    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1003
    iget-object v0, p0, Lcom/mapps/android/view/AdView$3;->this$0:Lcom/mapps/android/view/AdView;

    iget-object v1, p0, Lcom/mapps/android/view/AdView$3;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$3(Lcom/mapps/android/view/AdView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdView;->access$4(Lcom/mapps/android/view/AdView;I)V

    return-void
.end method
