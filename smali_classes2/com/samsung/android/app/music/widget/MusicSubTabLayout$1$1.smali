.class Lcom/samsung/android/app/music/widget/MusicSubTabLayout$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/widget/MusicSubTabLayout$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/widget/MusicSubTabLayout$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/widget/MusicSubTabLayout$1;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$1$1;->a:Lcom/samsung/android/app/music/widget/MusicSubTabLayout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$1$1;->a:Lcom/samsung/android/app/music/widget/MusicSubTabLayout$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/widget/MusicSubTabLayout$1;->b:Lcom/samsung/android/app/music/widget/MusicSubTabLayout;

    invoke-static {v0}, Lcom/samsung/android/app/music/widget/MusicSubTabLayout;->a(Lcom/samsung/android/app/music/widget/MusicSubTabLayout;)V

    return-void
.end method
