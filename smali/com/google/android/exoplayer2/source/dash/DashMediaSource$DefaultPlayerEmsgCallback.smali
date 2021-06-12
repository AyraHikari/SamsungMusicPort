.class final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultPlayerEmsgCallback"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V
    .locals 0

    .line 1142
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;->a:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;Lcom/google/android/exoplayer2/source/dash/DashMediaSource$1;)V
    .locals 0

    .line 1142
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;-><init>(Lcom/google/android/exoplayer2/source/dash/DashMediaSource;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1146
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;->a:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->c()V

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 1151
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;->a:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->a(J)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1156
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;->a:Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;->d()V

    return-void
.end method
