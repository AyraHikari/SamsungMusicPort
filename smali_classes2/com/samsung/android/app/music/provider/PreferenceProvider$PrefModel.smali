.class Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/PreferenceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrefModel"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->a:Ljava/lang/String;

    .line 258
    iput-object p2, p0, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/PreferenceProvider$PrefModel;->b:Ljava/lang/String;

    return-object v0
.end method
