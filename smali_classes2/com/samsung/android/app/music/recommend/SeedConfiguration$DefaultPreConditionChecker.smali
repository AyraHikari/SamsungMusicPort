.class Lcom/samsung/android/app/music/recommend/SeedConfiguration$DefaultPreConditionChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/recommend/SeedPreConditionChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/recommend/SeedConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultPreConditionChecker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/recommend/SeedConfiguration$1;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/app/music/recommend/SeedConfiguration$DefaultPreConditionChecker;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method
