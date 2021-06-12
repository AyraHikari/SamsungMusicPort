.class final Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment$dataLoadCallback$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoDataController$MyInfoDataOnLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment$dataLoadCallback$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;)V
    .locals 2

    const-string v0, "Ui"

    const-string v1, "MyInfo_MyInfoFragment | onLoadMyInfoData()"

    .line 99
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment$dataLoadCallback$1;->a:Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;->b(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoFragment;)Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;

    move-result-object v0

    const-string v1, "data"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoAdapter;->a(Lcom/samsung/android/app/music/milk/store/myinfo/MyInfoUserData;)V

    return-void
.end method
