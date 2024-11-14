On Mac Mx, use micromamba , but not conda

```
micromamba create -n humanoid-os python=3.12
micromamba activate humanoid-os
```

then,

```
python experiments/run.py
```

Depending on your servo's midpoint settings, you may need to fine-tune the leg offsets in the state_walk function to achieve optimal performance.

To prevent potential damage, it's advisable to restrict the servo's minimum and maximum positions.

Utilize tools like FD.exe or Feetech's Python SDK to configure these limits appropriately.

Note: Currently, only the walking functionality has been tested. Feel free to experiment with other actions, but be prepared to make necessary adjustments to ensure proper operation.

<div align="center" style="text-align: center;">

  <h1>Zeroth Bot</h1>  (WIP)

<p> The most hackable, affordable, and powerful 3D-printed open-source humanoid robot platform for sim-to-real and RL. Fully open-source from hardware design to model training, with Python SDK and NVIDIA Isaac simulation/training environment. BoM starts at $350. </p>

<p> This project is built by the open-source community and is currently work in progress. We welcome your feedback, issues, and pull requests in our <a href="https://discord.gg/G6KP76uha5">Discord</a>. </p>

<h3>
  <a href="https://docs.zeroth.bot">Docs</a>
  <span> · </span>
  <a href="https://docs.zeroth.bot/roadmap">Roadmap</a>
  <span> · </span>
  <a href="https://discord.gg/G6KP76uha5">Contribute</a>
  <span> · </span>
  <a href="https://discord.gg/G6KP76uha5">Community</a>
</h3>

<img width="1491" alt="image" src="https://github.com/user-attachments/assets/ff98aa6e-3eb9-48b9-829b-6eed9ad62690">

</div>

---

### To start using Zeroth Bot
- Please see the Getting Started documentation at [https://docs.zeroth.bot](https://docs.zeroth.bot).


### To start developing Zeroth Bot
Zeroth Bot is developed by the open-source community. We welcome both pull requests and issues on GitHub.

- Join the community [Discord](https://discord.gg/G6KP76uha5)
- Documentation at [https://docs.zeroth.bot](https://docs.zeroth.bot)

### License
This project is licensed under the MIT License.
