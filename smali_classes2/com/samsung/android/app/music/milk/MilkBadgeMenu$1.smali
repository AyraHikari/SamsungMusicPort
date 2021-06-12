.class final Lcom/samsung/android/app/music/milk/MilkBadgeMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/MilkBadgeMenu;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;Landroid/view/MenuItem;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

.field final synthetic b:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;Landroid/view/MenuItem;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/MilkBadgeMenu$1;->a:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/MilkBadgeMenu$1;->b:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "MilkBadgeMenu"

    const-string v0, "onClick"

    .line 46
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/MilkBadgeMenu$1;->a:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkBadgeMenu$1;->b:Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/MenuItem;)Z

    return-void
.end method
