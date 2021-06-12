.class public final Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder$OnServiceConnectionListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "MilkServiceBinder"


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder$OnServiceConnectionListener;

.field private final d:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder$OnServiceConnectionListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder$OnServiceConnectionListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder$1;-><init>(Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;->d:Landroid/content/ServiceConnection;

    .line 26
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;->b:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;->c:Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder$OnServiceConnectionListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;)Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder$OnServiceConnectionListener;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;->c:Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder$OnServiceConnectionListener;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 31
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;->a:Ljava/lang/String;

    const-string v1, "bind()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a(Landroid/content/ServiceConnection;)Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 36
    sget-object v0, Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;->a:Ljava/lang/String;

    const-string v1, "release()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/util/MilkServiceBinder;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->b(Landroid/content/ServiceConnection;)V

    return-void
.end method
