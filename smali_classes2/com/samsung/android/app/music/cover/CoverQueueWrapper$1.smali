.class Lcom/samsung/android/app/music/cover/CoverQueueWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/cover/CoverQueueWrapper;-><init>(Lcom/samsung/android/app/music/cover/CoverQueueFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

.field final synthetic b:Lcom/samsung/android/app/music/cover/CoverQueueWrapper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/cover/CoverQueueWrapper;Lcom/samsung/android/app/music/cover/CoverQueueFragment;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper$1;->b:Lcom/samsung/android/app/music/cover/CoverQueueWrapper;

    iput-object p2, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper$1;->a:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueueWrapper$1;->a:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->a()V

    return-void
.end method
