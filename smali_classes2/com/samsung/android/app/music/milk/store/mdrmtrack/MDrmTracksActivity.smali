.class public final Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity;->a:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    return-void
.end method

.method public static final a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity;->a:Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity$Companion;->a(Landroid/support/v4/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 17
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string v0, "MDrmTracksFragment"

    .line 21
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTracksFragment;-><init>()V

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 22
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    const v1, 0x1020002

    const-string v2, "MDrmTracksFragment"

    .line 23
    invoke-virtual {p1, v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
