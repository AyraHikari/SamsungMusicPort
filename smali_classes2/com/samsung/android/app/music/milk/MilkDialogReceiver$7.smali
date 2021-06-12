.class Lcom/samsung/android/app/music/milk/MilkDialogReceiver$7;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/MilkDialogReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$7;->a:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 286
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 287
    invoke-static {}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->e()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 291
    sget-object v1, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$7;->a:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->a(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 295
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$7;->a:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    .line 296
    invoke-static {}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->values()[Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    move-result-object v3

    aget-object v0, v3, v0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    const-string v3, "extra_bundle_key"

    .line 297
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;-><init>(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 298
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$7;->a:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->b(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$7;->a:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->a(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->hasWindowFocus()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 302
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$7;->a:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->a(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;Lcom/samsung/android/app/music/milk/MilkDialogReceiver$DialogMessage;)V

    return-void

    .line 299
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$7;->a:Lcom/samsung/android/app/music/milk/MilkDialogReceiver;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver;->c(Lcom/samsung/android/app/music/milk/MilkDialogReceiver;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 289
    :cond_3
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid URI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
