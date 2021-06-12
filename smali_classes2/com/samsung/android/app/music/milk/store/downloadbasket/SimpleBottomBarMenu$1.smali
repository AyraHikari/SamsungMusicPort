.class final Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;->a(Landroid/app/Activity;Landroid/view/Menu;Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;)Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;

.field final synthetic b:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;Landroid/view/MenuItem;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$1;->b:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 92
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenu$1;->b:Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SimpleBottomBarMenuObservable$OnBottomBarMenuItemSelectListener;->a(Landroid/view/MenuItem;)V

    return-void
.end method
