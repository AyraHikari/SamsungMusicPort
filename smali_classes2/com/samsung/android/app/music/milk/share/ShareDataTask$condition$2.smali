.class final Lcom/samsung/android/app/music/milk/share/ShareDataTask$condition$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/share/ShareDataTask;-><init>(Landroid/app/Activity;ILcom/samsung/android/app/music/milk/share/ShareItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/concurrent/locks/Condition;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/share/ShareDataTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/share/ShareDataTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask$condition$2;->this$0:Lcom/samsung/android/app/music/milk/share/ShareDataTask;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/share/ShareDataTask$condition$2;->invoke()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/share/ShareDataTask$condition$2;->this$0:Lcom/samsung/android/app/music/milk/share/ShareDataTask;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/share/ShareDataTask;->b(Lcom/samsung/android/app/music/milk/share/ShareDataTask;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    return-object v0
.end method
