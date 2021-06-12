.class public interface abstract Lcom/samsung/android/app/music/recommend/SeedCpIdGetter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Landroid/content/Context;Lcom/samsung/android/app/music/recommend/Seed;)Ljava/lang/String;
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/recommend/Seed;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation
.end method
