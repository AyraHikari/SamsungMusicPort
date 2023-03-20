.class public Lcom/samsung/android/app/music/widget/WindowFocusLinearLayout;
.super Landroid/widget/LinearLayout;
.source "WindowFocusLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/widget/WindowFocusLinearLayout$a;
    }
.end annotation


# instance fields
.field public a:Lcom/samsung/android/app/music/widget/WindowFocusLinearLayout$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/WindowFocusLinearLayout;->a:Lcom/samsung/android/app/music/widget/WindowFocusLinearLayout$a;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/widget/WindowFocusLinearLayout$a;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public setOnWindowFocusChangeListener(Lcom/samsung/android/app/music/widget/WindowFocusLinearLayout$a;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/WindowFocusLinearLayout;->a:Lcom/samsung/android/app/music/widget/WindowFocusLinearLayout$a;

    return-void
.end method
