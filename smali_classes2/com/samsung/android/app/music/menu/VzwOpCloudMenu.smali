.class public final Lcom/samsung/android/app/music/menu/VzwOpCloudMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/menu/AddableMenu;
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/menu/VzwOpCloudMenu;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/VzwOpCloudMenu;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f13002e

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/regional/usa/VZCloudUtils;->a(Landroid/content/Context;Landroid/view/Menu;I)V

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 29
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, 0x7f13002e

    if-nez p1, :cond_1

    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 32
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/VzwOpCloudMenu;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "com.vcast.mediamanager.ACTION_MUSIC"

    .line 31
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/regional/usa/VZCloudUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x0

    :goto_2
    return p1
.end method

.method public b(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 14
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/VzwOpCloudMenu;->a:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/music/regional/usa/VZCloudUtils;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    .line 15
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const p2, 0x7f1305c3

    const v0, 0x7f13002e

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method
