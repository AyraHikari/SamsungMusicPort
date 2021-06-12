.class public Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransactionArgs"
.end annotation


# static fields
.field private static c:Ljava/lang/String; = "transaction_scroll_duration"

.field private static d:Ljava/lang/String; = "transaction_start_delay"


# instance fields
.field public a:Landroid/os/Bundle;

.field public b:Landroid/transition/Transition;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;
    .locals 1

    .line 257
    new-instance v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;-><init>()V

    .line 258
    iput-object p0, v0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;->a:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;->a:Landroid/os/Bundle;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;->a:Landroid/os/Bundle;

    sget-object v3, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransactionArgs data : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transition : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransactionArgs;->b:Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
