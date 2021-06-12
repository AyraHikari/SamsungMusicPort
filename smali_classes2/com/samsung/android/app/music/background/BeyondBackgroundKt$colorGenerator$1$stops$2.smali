.class public final Lcom/samsung/android/app/music/background/BeyondBackgroundKt$colorGenerator$1$stops$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/background/BeyondBackgroundKt$colorGenerator$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "[F>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundKt$colorGenerator$1;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/background/BeyondBackgroundKt$colorGenerator$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundKt$colorGenerator$1$stops$2;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundKt$colorGenerator$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 221
    invoke-virtual {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundKt$colorGenerator$1$stops$2;->invoke()[F

    move-result-object v0

    return-object v0
.end method

.method public final invoke()[F
    .locals 5

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundKt$colorGenerator$1$stops$2;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundKt$colorGenerator$1;

    iget v0, v0, Lcom/samsung/android/app/music/background/BeyondBackgroundKt$colorGenerator$1;->b:I

    .line 913
    new-array v0, v0, [F

    .line 914
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    int-to-float v3, v2

    .line 225
    iget-object v4, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundKt$colorGenerator$1$stops$2;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundKt$colorGenerator$1;

    iget v4, v4, Lcom/samsung/android/app/music/background/BeyondBackgroundKt$colorGenerator$1;->b:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
