.class public final Lcom/samsung/android/app/musiclibrary/ui/widget/MusicSeekBar;
.super Landroidx/appcompat/widget/SeslSeekBar;
.source "MusicSeekBar.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/SeslSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final setProgressSeamless(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/q0;->setSeamless(Z)V

    return-void
.end method
