.class Lcom/samsung/android/app/music/search/SearchTabFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Landroid/support/v7/app/AppCompatActivity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/AppCompatActivity;

.field final synthetic b:Lcom/samsung/android/app/music/search/SearchTabFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/search/SearchTabFragment;Landroid/support/v7/app/AppCompatActivity;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$5;->b:Lcom/samsung/android/app/music/search/SearchTabFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$5;->a:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$5;->b:Lcom/samsung/android/app/music/search/SearchTabFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment$5;->a:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Lcom/samsung/android/app/music/search/SearchTabFragment;Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method
