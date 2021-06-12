.class Lcom/samsung/android/app/music/search/SearchTabFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Landroid/support/v7/app/AppCompatActivity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/support/v7/app/AppCompatActivity;

.field final synthetic c:Lcom/samsung/android/app/music/search/SearchTabFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/search/SearchTabFragment;Landroid/view/View;Landroid/support/v7/app/AppCompatActivity;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$6;->c:Lcom/samsung/android/app/music/search/SearchTabFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$6;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$6;->b:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 337
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$6;->a:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 338
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$6;->c:Lcom/samsung/android/app/music/search/SearchTabFragment;

    iget-object p2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$6;->b:Landroid/support/v7/app/AppCompatActivity;

    iget-object p3, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$6;->a:Landroid/view/View;

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Lcom/samsung/android/app/music/search/SearchTabFragment;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method
