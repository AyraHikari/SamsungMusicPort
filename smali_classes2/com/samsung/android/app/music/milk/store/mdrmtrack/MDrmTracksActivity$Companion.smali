.class public final Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 10

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 34
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/dialog/MilkBaseLauncher;->a(Landroid/support/v4/app/FragmentActivity;Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/app/music/dialog/MilkBaseLauncher;->a(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 37
    new-instance v2, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;-><init>(Z)V

    .line 40
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 41
    :cond_1
    iget-object v5, v2, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->uri:Landroid/net/Uri;

    .line 42
    iget-object v6, v2, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->projection:[Ljava/lang/String;

    .line 43
    iget-object v7, v2, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->selection:Ljava/lang/String;

    .line 44
    iget-object v8, v2, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 45
    iget-object v9, v2, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackQueryArgs;->orderBy:Ljava/lang/String;

    .line 39
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    .line 46
    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object v3, v2

    check-cast v3, Landroid/database/Cursor;

    if-eqz v3, :cond_3

    .line 48
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 49
    :cond_2
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_3
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-gtz v1, :cond_4

    const-string v0, "MDrmTracksActivity_legacy"

    const-string v1, "MDrmTracksLauncher noExpiredDrmFile"

    .line 53
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0467

    .line 55
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0484

    .line 56
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->b(I)Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;->a()Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v1, "noExpiredDrmFile"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, p1

    .line 46
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v2, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method
