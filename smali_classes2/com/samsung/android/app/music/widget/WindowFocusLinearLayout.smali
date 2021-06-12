.class public Lcom/samsung/android/app/music/widget/WindowFocusLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/widget/WindowFocusLinearLayout$OnWindowFocusChangeListener;
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/widget/WindowFocusLinearLayout$OnWindowFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/WindowFocusLinearLayout;->a:Lcom/samsung/android/app/music/widget/WindowFocusLinearLayout$OnWindowFocusChangeListener;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/WindowFocusLinearLayout;->a:Lcom/samsung/android/app/music/widget/WindowFocusLinearLayout$OnWindowFocusChangeListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/widget/WindowFocusLinearLayout$OnWindowFocusChangeListener;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public setOnWindowFocusChangeListener(Lcom/samsung/android/app/music/widget/WindowFocusLinearLayout$OnWindowFocusChangeListener;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/WindowFocusLinearLayout;->a:Lcom/samsung/android/app/music/widget/WindowFocusLinearLayout$OnWindowFocusChangeListener;

    return-void
.end method
