.class public final Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation


# instance fields
.field final a:I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end field

.field final b:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field

.field final c:I
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput p1, p0, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;->a:I

    .line 95
    iput p2, p0, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;->b:I

    .line 96
    iput p3, p0, Lcom/samsung/android/app/music/player/setas/SetAsGroupBuilder$Item;->c:I

    return-void
.end method
