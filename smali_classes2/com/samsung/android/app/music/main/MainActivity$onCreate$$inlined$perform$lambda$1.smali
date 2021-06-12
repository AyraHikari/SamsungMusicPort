.class final Lcom/samsung/android/app/music/main/MainActivity$onCreate$$inlined$perform$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/main/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/main/MainActivity;

.field final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/main/MainActivity;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/main/MainActivity$onCreate$$inlined$perform$lambda$1;->a:Lcom/samsung/android/app/music/main/MainActivity;

    iput-object p2, p0, Lcom/samsung/android/app/music/main/MainActivity$onCreate$$inlined$perform$lambda$1;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/main/MainActivity$onCreate$$inlined$perform$lambda$1;->a:Lcom/samsung/android/app/music/main/MainActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/main/MainActivity;->invalidateOptionsMenu()V

    return-void
.end method
