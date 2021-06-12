.class public interface abstract Lcom/samsung/android/app/music/recommend/SeedCompounder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/recommend/SeedRefreshable;


# virtual methods
.method public abstract a(Landroid/content/Context;II)Ljava/util/List;
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/recommend/Seed;",
            ">;"
        }
    .end annotation
.end method
